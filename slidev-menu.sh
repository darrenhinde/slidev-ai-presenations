#!/bin/bash

# Interactive menu for Slidev presentations

# Terminal colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

clear

echo -e "${CYAN}================================${NC}"
echo -e "${CYAN}    SLIDEV PRESENTATION MENU    ${NC}"
echo -e "${CYAN}================================${NC}"
echo ""

# Function to list all presentations with numbers
list_presentations() {
  echo -e "${YELLOW}Available presentations:${NC}"
  
  # Get all presentation directories
  presentations=()
  while read -r dir; do
    presentations+=("$(basename "$dir")")
  done < <(find presentations -maxdepth 1 -type d -not -path presentations | sort)
  
  # Print presentations with numbers
  if [ ${#presentations[@]} -eq 0 ]; then
    echo "  No presentations found"
    return 1
  fi
  
  for i in "${!presentations[@]}"; do
    echo "  $((i+1)). ${presentations[$i]}"
  done
  
  return 0
}

# Create a new presentation
create_presentation() {
  echo -e "${YELLOW}Create a new presentation${NC}"
  echo -n "Enter presentation name: "
  read -r name
  
  if [ -z "$name" ]; then
    echo "Presentation name cannot be empty"
    return
  fi
  
  ./create-presentation.sh "$name"
  echo ""
  echo -e "${GREEN}Press Enter to continue...${NC}"
  read
}

# Main menu loop
while true; do
  clear
  echo -e "${CYAN}================================${NC}"
  echo -e "${CYAN}    SLIDEV PRESENTATION MENU    ${NC}"
  echo -e "${CYAN}================================${NC}"
  echo ""
  
  echo -e "${YELLOW}What would you like to do?${NC}"
  echo "  1. Run a presentation (dev mode)"
  echo "  2. Export a presentation to PDF"
  echo "  3. Create a new presentation"
  echo "  4. Exit"
  echo ""
  echo -n "Enter your choice [1-4]: "
  read -r choice
  
  case $choice in
    1) # Run a presentation
      clear
      echo -e "${YELLOW}Run a presentation in dev mode${NC}"
      echo ""
      
      if list_presentations; then
        echo ""
        echo -n "Enter the number of the presentation to run (or 0 to cancel): "
        read -r presentation_num
        
        if [ "$presentation_num" -eq 0 ] 2>/dev/null; then
          continue
        fi
        
        if [ "$presentation_num" -le "${#presentations[@]}" ] 2>/dev/null; then
          index=$((presentation_num-1))
          presentation="${presentations[$index]}"
          
          echo ""
          echo -e "${GREEN}Starting ${presentations[$index]} in dev mode...${NC}"
          echo -e "${YELLOW}(Press Ctrl+C to stop the presentation and return to menu)${NC}"
          echo ""
          cd "presentations/$presentation" && pnpm slidev
          
          echo ""
          echo -e "${GREEN}Press Enter to continue...${NC}"
          read
        else
          echo "Invalid selection"
          echo ""
          echo -e "${GREEN}Press Enter to continue...${NC}"
          read
        fi
      else
        echo ""
        echo -e "${GREEN}Press Enter to continue...${NC}"
        read
      fi
      ;;
      
    2) # Export a presentation
      clear
      echo -e "${YELLOW}Export a presentation to PDF${NC}"
      echo ""
      
      if list_presentations; then
        echo ""
        echo -n "Enter the number of the presentation to export (or 0 to cancel): "
        read -r presentation_num
        
        if [ "$presentation_num" -eq 0 ] 2>/dev/null; then
          continue
        fi
        
        if [ "$presentation_num" -le "${#presentations[@]}" ] 2>/dev/null; then
          index=$((presentation_num-1))
          presentation="${presentations[$index]}"
          
          echo ""
          echo -e "${GREEN}Exporting ${presentations[$index]} to PDF...${NC}"
          echo -e "${YELLOW}This may take a moment...${NC}"
          echo ""
          
          cd "presentations/$presentation" && pnpm slidev export
          
          if [ $? -eq 0 ]; then
            echo ""
            echo -e "${GREEN}PDF exported successfully!${NC}"
            echo -e "File saved to: presentations/$presentation/slides-export.pdf"
          else
            echo ""
            echo -e "${RED}Export failed${NC}"
          fi
          
          echo ""
          echo -e "${GREEN}Press Enter to continue...${NC}"
          read
        else
          echo "Invalid selection"
          echo ""
          echo -e "${GREEN}Press Enter to continue...${NC}"
          read
        fi
      else
        echo ""
        echo -e "${GREEN}Press Enter to continue...${NC}"
        read
      fi
      ;;
      
    3) # Create a presentation
      clear
      create_presentation
      ;;
      
    4) # Exit
      clear
      echo "Goodbye!"
      exit 0
      ;;
      
    *)
      echo "Invalid choice"
      echo ""
      echo -e "${GREEN}Press Enter to continue...${NC}"
      read
      ;;
  esac
done 