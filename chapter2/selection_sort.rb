module ArraySelectionSortExtension
  refine Array do

    def selection_sort
      a = self
      n = a.size
      for i in 0...n
        min = i
        for j in (i + 1)...n
          if a[j] < a[min]
            min = j
          end
        end
        tmp = a[i]
        a[i] = a[min]
        a[min] = tmp
      end
    end

  end
end

module SelectionSort

  using ArraySelectionSortExtension

  a = [3, 4, 2, 5, 6, 5, 9, 7, 8]
  a.selection_sort
  p a

end

